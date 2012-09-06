.class public Lcom/dropbox/android/widget/quickactions/ButtonClear;
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
    iput-wide p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonClear;->f:J

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f030029

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonClear;->f:J

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;J)V

    .line 20
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 29
    const v0, 0x7f090162

    return v0
.end method
