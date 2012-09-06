.class public Landroid/support/place/connector/security/AccountWithRoles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public final account:Landroid/support/place/connector/security/Account;

.field public final roles:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Landroid/support/place/connector/security/AccountWithRoles$1;

    invoke-direct {v0}, Landroid/support/place/connector/security/AccountWithRoles$1;-><init>()V

    sput-object v0, Landroid/support/place/connector/security/AccountWithRoles;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    new-instance v0, Landroid/support/place/connector/security/AccountWithRoles$2;

    invoke-direct {v0}, Landroid/support/place/connector/security/AccountWithRoles$2;-><init>()V

    sput-object v0, Landroid/support/place/connector/security/AccountWithRoles;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Landroid/support/place/connector/security/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    iput-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    .line 56
    iget-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/support/place/connector/security/Account;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    .line 50
    iput-object p2, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/support/place/connector/security/Account;

    invoke-direct {v0, p1}, Landroid/support/place/connector/security/Account;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    .line 91
    const-string v0, "roles"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    if-ne p1, p0, :cond_5

    .line 37
    :cond_4
    :goto_4
    return v0

    .line 35
    :cond_5
    instance-of v2, p1, Landroid/support/place/connector/security/AccountWithRoles;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    .line 36
    :cond_b
    check-cast p1, Landroid/support/place/connector/security/AccountWithRoles;

    .line 37
    iget-object v2, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    iget-object v3, p1, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    invoke-virtual {v2, v3}, Landroid/support/place/connector/security/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    iget-object v3, p1, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    invoke-virtual {v0}, Landroid/support/place/connector/security/Account;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountWithRoles { account = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/place/connector/security/AccountWithRoles;->account:Landroid/support/place/connector/security/Account;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/security/Account;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 97
    const-string v0, "roles"

    iget-object v1, p0, Landroid/support/place/connector/security/AccountWithRoles;->roles:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    return-void
.end method
