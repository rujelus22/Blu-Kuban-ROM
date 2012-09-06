.class final Lcom/dropbox/android/widget/P;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/Q;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-wide p1, p0, Lcom/dropbox/android/widget/P;->a:J

    .line 870
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)[Lcom/dropbox/android/widget/quickactions/a;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 875
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dropbox/android/widget/quickactions/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;

    iget-wide v3, p0, Lcom/dropbox/android/widget/P;->a:J

    invoke-direct {v2, v3, v4}, Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;-><init>(J)V

    aput-object v2, v0, v1

    return-object v0
.end method
