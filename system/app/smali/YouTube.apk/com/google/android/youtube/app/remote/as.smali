.class public final Lcom/google/android/youtube/app/remote/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/app/remote/al;

.field public static final b:Lcom/google/android/youtube/app/remote/al;

.field public static final c:Lcom/google/android/youtube/app/remote/al;

.field public static final d:Lcom/google/android/youtube/app/remote/al;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const v4, 0x7f0b021a

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "LoungeServerConnectionError"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/as;->a:Lcom/google/android/youtube/app/remote/al;

    .line 17
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "LaunchFailDeviceBusy"

    const v2, 0x7f0b021d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/as;->b:Lcom/google/android/youtube/app/remote/al;

    .line 19
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "LaunchFailTimeout"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/as;->c:Lcom/google/android/youtube/app/remote/al;

    .line 21
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "LaunchFailNeedsInstall"

    const v2, 0x7f0b021e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/as;->d:Lcom/google/android/youtube/app/remote/al;

    return-void
.end method
