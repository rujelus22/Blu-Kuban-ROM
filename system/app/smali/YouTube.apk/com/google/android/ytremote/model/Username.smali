.class public Lcom/google/android/ytremote/model/Username;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOGGED_IN:Lcom/google/android/ytremote/model/Username;

.field public static final UNLINKED_GAIA_USER:Lcom/google/android/ytremote/model/Username;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/ytremote/model/Username;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/model/Username;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/ytremote/model/Username;->LOGGED_IN:Lcom/google/android/ytremote/model/Username;

    .line 20
    new-instance v0, Lcom/google/android/ytremote/model/Username;

    const-string v1, "123UnlinkedGaiaUser"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/model/Username;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/ytremote/model/Username;->UNLINKED_GAIA_USER:Lcom/google/android/ytremote/model/Username;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 79
    instance-of v0, p1, Lcom/google/android/ytremote/model/Username;

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_5
    return v0

    .line 82
    :cond_6
    check-cast p1, Lcom/google/android/ytremote/model/Username;

    .line 83
    iget-object v0, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toLowerCaseString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toUpperCaseString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/ytremote/model/Username;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
