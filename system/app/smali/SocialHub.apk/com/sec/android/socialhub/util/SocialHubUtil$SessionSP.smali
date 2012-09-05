.class public Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
.super Ljava/lang/Object;
.source "SocialHubUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/util/SocialHubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionSP"
.end annotation


# instance fields
.field public is_expired:Z

.field public sp:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 4
    .parameter "sp"
    .parameter "is_expried"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->sp:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->is_expired:Z

    .line 79
    iput p1, p0, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->sp:I

    .line 80
    iput-boolean p2, p0, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->is_expired:Z

    .line 81
    return-void
.end method
