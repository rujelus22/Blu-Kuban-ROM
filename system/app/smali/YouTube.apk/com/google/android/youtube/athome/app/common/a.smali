.class public final Lcom/google/android/youtube/athome/app/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static d:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/athome/app/common/b;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/b;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/app/common/a;->d:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/a;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/youtube/athome/app/common/a;->b:Landroid/net/Uri;

    .line 41
    iput-boolean p3, p0, Lcom/google/android/youtube/athome/app/common/a;->c:Z

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;ZB)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/athome/app/common/a;-><init>(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public final writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    const-string v0, "adTitle"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "clickthroughUri"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/a;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "skippable"

    iget-boolean v1, p0, Lcom/google/android/youtube/athome/app/common/a;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method
