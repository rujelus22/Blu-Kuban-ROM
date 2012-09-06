.class public Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field protected final f:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;->f:J

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 30
    const v0, 0x7f030028

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/android/widget/quickactions/b;

    invoke-direct {v1, p0}, Lcom/dropbox/android/widget/quickactions/b;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 35
    const v0, 0x7f090161

    return v0
.end method
