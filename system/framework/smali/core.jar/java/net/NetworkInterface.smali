.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceIndex:I

.field private final name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .parameter "name"
    .parameter "interfaceIndex"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p4, interfaceAddresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 55
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 56
    iput p2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    .line 57
    iput-object p3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    .line 58
    iput-object p4, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    .line 59
    return-void
.end method

.method private static collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .parameter "interfaceName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 161
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p2, interfaceAddresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v4, 0x0

    .line 163
    .local v4, fd:Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->AF_INET:I

    sget v8, Llibcore/io/OsConstants;->SOCK_DGRAM:I

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 164
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 165
    .local v0, address:Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFBRDADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 166
    .local v1, broadcast:Ljava/net/InetAddress;
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFNETMASK:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 167
    .local v5, netmask:Ljava/net/InetAddress;
    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 168
    const/4 v1, 0x0

    .line 171
    :cond_2d
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v6, Ljava/net/InterfaceAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .end local v0           #address:Ljava/net/InetAddress;
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1           #broadcast:Ljava/net/InetAddress;
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5           #netmask:Ljava/net/InetAddress;
    invoke-direct {v6, v0, v1, v5}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_4e
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_3e} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_57

    .line 183
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 185
    :goto_41
    return-void

    .line 174
    :catch_42
    move-exception v2

    .line 175
    .local v2, errnoException:Llibcore/io/ErrnoException;
    :try_start_43
    iget v6, v2, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_53

    .line 178
    invoke-static {v2}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4e

    .line 183
    .end local v2           #errnoException:Llibcore/io/ErrnoException;
    :catchall_4e
    move-exception v6

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    .restart local v2       #errnoException:Llibcore/io/ErrnoException;
    :cond_53
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_41

    .line 180
    .end local v2           #errnoException:Llibcore/io/ErrnoException;
    :catch_57
    move-exception v3

    .line 181
    .local v3, ex:Ljava/lang/Exception;
    :try_start_58
    invoke-static {v3}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_4e
.end method

.method private static collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .registers 15
    .parameter "interfaceName"
    .parameter "interfaceIndex"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 133
    .local p2, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p3, interfaceAddresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v3, 0x0

    .line 135
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/net/if_inet6"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_7d

    .line 136
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, suffix:Ljava/lang/String;
    :cond_20
    :goto_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_76

    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 142
    const/16 v9, 0x10

    new-array v0, v9, [B

    .line 143
    .local v0, addressBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_31
    array-length v9, v0

    if-ge v2, v9, :cond_4a

    .line 144
    mul-int/lit8 v9, v2, 0x2

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 146
    :cond_4a
    const/16 v9, 0x24

    const/16 v10, 0x26

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v7

    .line 147
    .local v7, prefixLength:S
    new-instance v5, Ljava/net/Inet6Address;

    const/4 v9, 0x0

    invoke-direct {v5, v0, v9, p1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    .line 149
    .local v5, inet6Address:Ljava/net/Inet6Address;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v9, Ljava/net/InterfaceAddress;

    invoke-direct {v9, v5, v7}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet6Address;S)V

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_d .. :try_end_69} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_69} :catch_6a

    goto :goto_20

    .line 152
    .end local v0           #addressBytes:[B
    .end local v2           #i:I
    .end local v5           #inet6Address:Ljava/net/Inet6Address;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #prefixLength:S
    .end local v8           #suffix:Ljava/lang/String;
    :catch_6a
    move-exception v1

    move-object v3, v4

    .line 153
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v1, ex:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :goto_6c
    :try_start_6c
    invoke-static {v1}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v9

    throw v9
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_71

    .line 155
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_71
    move-exception v9

    :goto_72
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #suffix:Ljava/lang/String;
    :cond_76
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    return-void

    .line 155
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #suffix:Ljava/lang/String;
    :catchall_7a
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_72

    .line 152
    :catch_7d
    move-exception v1

    goto :goto_6c
.end method

.method static forUnboundMulticastSocket()Ljava/net/NetworkInterface;
    .registers 6

    .prologue
    .line 64
    new-instance v0, Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/InetAddress;

    const/4 v4, 0x0

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 244
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 246
    const/4 v1, 0x0

    .line 248
    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    goto :goto_9
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 225
    if-nez p0, :cond_a

    .line 226
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "address == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 229
    .local v1, networkInterface:Ljava/net/NetworkInterface;
    iget-object v2, v1, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 233
    .end local v1           #networkInterface:Ljava/net/NetworkInterface;
    :goto_26
    return-object v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 6
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_a

    .line 108
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "interfaceName == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_a
    invoke-static {p0}, Ljava/net/NetworkInterface;->isValidInterfaceName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 111
    const/4 v3, 0x0

    .line 120
    :goto_11
    return-object v3

    .line 114
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ifindex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, interfaceIndex:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, interfaceAddresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-static {p0, v2, v0, v1}, Ljava/net/NetworkInterface;->collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 118
    invoke-static {p0, v0, v1}, Ljava/net/NetworkInterface;->collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 120
    new-instance v3, Ljava/net/NetworkInterface;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    goto :goto_11
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkInterfacesList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 267
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/net"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, interfaceNames:[Ljava/lang/String;
    array-length v7, v3

    new-array v4, v7, [Ljava/net/NetworkInterface;

    .line 269
    .local v4, interfaces:[Ljava/net/NetworkInterface;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v7, v3

    if-ge v2, v7, :cond_6a

    .line 270
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interfaceNames["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    aget-object v7, v3, v2

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    aput-object v7, v4, v2

    .line 272
    aget-object v7, v4, v2

    if-nez v7, :cond_67

    .line 274
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null interface for interfaceNames["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 278
    :cond_6a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    array-length v7, v4

    new-array v5, v7, [Z

    .line 280
    .local v5, peeked:[Z
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_73
    array-length v7, v4

    if-ge v0, v7, :cond_da

    .line 282
    aget-boolean v7, v5, v0

    if-eqz v7, :cond_7d

    .line 280
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 285
    :cond_7d
    move v1, v0

    .line 287
    .local v1, counter2:I
    :goto_7e
    array-length v7, v4

    if-ge v1, v7, :cond_ce

    .line 288
    aget-boolean v7, v5, v1

    if-eqz v7, :cond_88

    .line 287
    :cond_85
    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 291
    :cond_88
    aget-object v7, v4, v0

    if-eqz v7, :cond_85

    aget-object v7, v4, v1

    if-eqz v7, :cond_85

    .line 292
    aget-object v7, v4, v1

    iget-object v7, v7, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v0

    iget-object v9, v9, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 294
    aput-boolean v10, v5, v1

    .line 295
    aget-object v7, v4, v0

    iget-object v7, v7, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    aget-object v8, v4, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    aget-object v7, v4, v1

    aget-object v8, v4, v0

    iput-object v8, v7, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 297
    aget-object v7, v4, v0

    iget-object v7, v7, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    aget-object v8, v4, v1

    iget-object v8, v8, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_85

    .line 301
    :cond_ce
    aget-object v7, v4, v0

    if-eqz v7, :cond_7a

    .line 304
    aget-object v7, v4, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    aput-boolean v10, v5, v0

    goto :goto_7a

    .line 308
    .end local v1           #counter2:I
    :cond_da
    return-object v6
.end method

.method private hasFlag(I)Z
    .registers 5
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/net/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, flags:I
    and-int v1, v0, p1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private static isValidInterfaceName(Ljava/lang/String;)Z
    .registers 7
    .parameter "interfaceName"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/net"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_d
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 191
    .local v3, validName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 192
    const/4 v4, 0x1

    .line 195
    .end local v3           #validName:Ljava/lang/String;
    :goto_18
    return v4

    .line 190
    .restart local v3       #validName:Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 195
    .end local v3           #validName:Ljava/lang/String;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_18
.end method

.method private static readIntFile(Ljava/lang/String;)I
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, s:Ljava/lang/String;
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 204
    :goto_1b
    return v2

    :cond_1c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v2

    goto :goto_1b

    .line 206
    .end local v1           #s:Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 207
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method private static rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;
    .registers 2
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    .line 213
    .local v0, result:Ljava/net/SocketException;
    invoke-virtual {v0, p0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 214
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    if-ne p1, p0, :cond_5

    .line 333
    :cond_4
    :goto_4
    return v1

    .line 328
    :cond_5
    instance-of v3, p1, Ljava/net/NetworkInterface;

    if-nez v3, :cond_b

    move v1, v2

    .line 329
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 331
    check-cast v0, Ljava/net/NetworkInterface;

    .line 333
    .local v0, rhs:Ljava/net/NetworkInterface;
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    iget v4, v0, Ljava/net/NetworkInterface;->interfaceIndex:I

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iget-object v4, v0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareAddress()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/net/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    new-array v2, v4, [B

    .line 454
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v4, v2

    if-ge v1, v4, :cond_41

    .line 455
    mul-int/lit8 v4, v1, 0x3

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 458
    :cond_41
    const/4 v1, 0x0

    :goto_42
    array-length v4, v2

    if-ge v1, v4, :cond_4d

    .line 459
    aget-byte v4, v2, v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_4f

    if-eqz v4, :cond_4a

    .line 463
    .end local v2           #result:[B
    :goto_49
    return-object v2

    .line 458
    .restart local v2       #result:[B
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 463
    :cond_4d
    const/4 v2, 0x0

    goto :goto_49

    .line 464
    .end local v1           #i:I
    .end local v2           #result:[B
    .end local v3           #s:Ljava/lang/String;
    :catch_4f
    move-exception v0

    .line 465
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMTU()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mtu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLoopback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 413
    sget v0, Llibcore/io/OsConstants;->IFF_LOOPBACK:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPointToPoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 425
    sget v0, Llibcore/io/OsConstants;->IFF_POINTOPOINT:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 402
    sget v0, Llibcore/io/OsConstants;->IFF_UP:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsMulticast()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 435
    sget v0, Llibcore/io/OsConstants;->IFF_MULTICAST:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 349
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 355
    .local v0, address:Ljava/net/InetAddress;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 359
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
