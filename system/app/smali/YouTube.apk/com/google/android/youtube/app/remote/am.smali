.class public final Lcom/google/android/youtube/app/remote/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/app/remote/al;

.field public static final b:Lcom/google/android/youtube/app/remote/al;

.field public static final c:Lcom/google/android/youtube/app/remote/al;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 287
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "Network"

    const v2, 0x7f0b000c

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    .line 289
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "ScreenNotFound"

    const v2, 0x7f0b021f

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/am;->b:Lcom/google/android/youtube/app/remote/al;

    .line 291
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "Unknown"

    const v2, 0x7f0b0017

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/am;->c:Lcom/google/android/youtube/app/remote/al;

    return-void
.end method
