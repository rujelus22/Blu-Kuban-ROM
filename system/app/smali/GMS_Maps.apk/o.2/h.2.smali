.class public Lo/H;
.super Lt/t;
.source "SourceFile"


# static fields
.field private static final f:Lo/H;


# instance fields
.field private a:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lo/H;

    invoke-direct {v0}, Lo/H;-><init>()V

    sput-object v0, Lo/H;->f:Lo/H;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lt/t;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_64
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_86
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_3e
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_b} :catch_4e

    .line 89
    :try_start_b
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_73
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_89
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_7f
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_10} :catch_7a

    .line 90
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_31

    .line 91
    sget-object v1, Lbo/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 93
    invoke-static {v1}, Lo/a;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_75
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_82
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_23} :catch_7d

    goto :goto_10

    .line 95
    :catch_24
    move-exception v1

    move-object v1, v2

    .line 105
    :goto_26
    if-eqz v0, :cond_2b

    .line 106
    :try_start_28
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 108
    :cond_2b
    if-eqz v1, :cond_30

    .line 109
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_84

    .line 116
    :cond_30
    :goto_30
    return-object v3

    .line 105
    :cond_31
    if-eqz v0, :cond_36

    .line 106
    :try_start_33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 108
    :cond_36
    if-eqz v2, :cond_30

    .line 109
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_30

    .line 111
    :catch_3c
    move-exception v0

    goto :goto_30

    .line 97
    :catch_3e
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 105
    :goto_41
    if-eqz v0, :cond_46

    .line 106
    :try_start_43
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 108
    :cond_46
    if-eqz v2, :cond_30

    .line 109
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_30

    .line 111
    :catch_4c
    move-exception v0

    goto :goto_30

    .line 99
    :catch_4e
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 101
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_75

    .line 105
    if-eqz v0, :cond_5c

    .line 106
    :try_start_59
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 108
    :cond_5c
    if-eqz v2, :cond_30

    .line 109
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_61} :catch_62

    goto :goto_30

    .line 111
    :catch_62
    move-exception v0

    goto :goto_30

    .line 104
    :catchall_64
    move-exception v0

    move-object v2, v1

    .line 105
    :goto_66
    if-eqz v1, :cond_6b

    .line 106
    :try_start_68
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 108
    :cond_6b
    if-eqz v2, :cond_70

    .line 109
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_71

    .line 113
    :cond_70
    :goto_70
    throw v0

    .line 111
    :catch_71
    move-exception v1

    goto :goto_70

    .line 104
    :catchall_73
    move-exception v0

    goto :goto_66

    :catchall_75
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_66

    .line 99
    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_51

    :catch_7d
    move-exception v1

    goto :goto_51

    .line 97
    :catch_7f
    move-exception v0

    move-object v0, v1

    goto :goto_41

    :catch_82
    move-exception v1

    goto :goto_41

    .line 111
    :catch_84
    move-exception v0

    goto :goto_30

    .line 95
    :catch_86
    move-exception v0

    move-object v0, v1

    goto :goto_26

    :catch_89
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_26
.end method

.method public static a(Landroid/content/Context;)Lo/H;
    .registers 2
    .parameter

    .prologue
    .line 61
    sget-object v0, Lo/H;->f:Lo/H;

    invoke-virtual {v0, p0}, Lo/H;->c(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lo/H;->f:Lo/H;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lo/H;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 158
    iget-object v0, p0, Lo/H;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 159
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lo/H;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 170
    :goto_1c
    return-void

    .line 166
    :catch_1d
    move-exception v0

    goto :goto_1c

    .line 164
    :catch_1f
    move-exception v0

    goto :goto_1c
.end method

.method private a(Lo/a;)V
    .registers 6
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    if-nez v0, :cond_b

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/H;->c:Ljava/util/List;

    .line 189
    :cond_b
    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 194
    invoke-virtual {p1}, Lo/a;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lo/a;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 197
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 198
    invoke-direct {p0, v0}, Lo/H;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 199
    return-void
.end method


# virtual methods
.method public a([Lo/P;)Lo/a;
    .registers 5
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0}, Lo/H;->b()Lo/a;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lo/a;->a([Lo/P;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 219
    :goto_c
    return-object v0

    .line 214
    :cond_d
    invoke-virtual {p0}, Lo/H;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    .line 215
    invoke-virtual {v0, p1}, Lo/a;->a([Lo/P;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_c

    .line 219
    :cond_28
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lo/H;->a:Ljava/util/List;

    .line 122
    iput-object v0, p0, Lo/H;->c:Ljava/util/List;

    .line 123
    iput-object v0, p0, Lo/H;->d:Ljava/io/File;

    .line 124
    iput-object v0, p0, Lo/H;->e:Ljava/io/File;

    .line 125
    return-void
.end method

.method public a(Lo/g;)V
    .registers 3
    .parameter

    .prologue
    .line 182
    invoke-static {p1}, Lo/a;->a(Lo/g;)Lo/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/H;->a(Lo/a;)V

    .line 183
    return-void
.end method

.method public b()Lo/a;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    if-nez v0, :cond_c

    .line 132
    iget-object v0, p0, Lo/H;->d:Ljava/io/File;

    invoke-static {v0}, Lo/H;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/H;->c:Ljava/util/List;

    .line 134
    :cond_c
    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lo/H;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "return_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/H;->d:Ljava/io/File;

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/H;->e:Ljava/io/File;

    .line 75
    return-void
.end method

.method public b(Lo/g;)Z
    .registers 4
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lo/H;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lo/a;->a(Lo/g;)Lo/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lo/H;->a:Ljava/util/List;

    if-nez v0, :cond_c

    .line 142
    iget-object v0, p0, Lo/H;->e:Ljava/io/File;

    invoke-static {v0}, Lo/H;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/H;->a:Ljava/util/List;

    .line 146
    :cond_c
    iget-object v0, p0, Lo/H;->a:Ljava/util/List;

    return-object v0
.end method
