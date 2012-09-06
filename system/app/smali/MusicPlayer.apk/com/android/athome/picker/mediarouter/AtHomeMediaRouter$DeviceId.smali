.class Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceId"
.end annotation


# instance fields
.field mIpAddress:Ljava/lang/String;

.field mPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mIpAddress:Ljava/lang/String;

    .line 133
    iput p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mPort:I

    .line 134
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 146
    instance-of v2, p1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;

    if-nez v2, :cond_6

    .line 150
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;

    .line 150
    .local v0, that:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mIpAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mPort:I

    iget v3, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mPort:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 138
    const/16 v0, 0x11

    .line 139
    .local v0, result:I
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mIpAddress:Ljava/lang/String;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    :goto_7
    add-int/lit16 v0, v1, 0x20f

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mPort:I

    add-int v0, v1, v2

    .line 141
    return v0

    .line 139
    :cond_10
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7
.end method
