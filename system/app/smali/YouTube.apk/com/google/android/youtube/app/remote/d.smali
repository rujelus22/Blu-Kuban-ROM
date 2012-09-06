.class public final Lcom/google/android/youtube/app/remote/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/app/remote/al;

.field public static final b:Lcom/google/android/youtube/app/remote/al;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "AtHomePhoneVersionOutdated"

    const v2, 0x7f0b022e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/d;->a:Lcom/google/android/youtube/app/remote/al;

    .line 17
    new-instance v0, Lcom/google/android/youtube/app/remote/al;

    const-string v1, "AtHomeScreenVersionOutdated"

    const v2, 0x7f0b022f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/remote/al;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/youtube/app/remote/d;->b:Lcom/google/android/youtube/app/remote/al;

    return-void
.end method
