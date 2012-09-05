.class public Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;
.super Landroid/app/ActivityGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    const v0, 0x1030128

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->setTheme(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const v0, 0x1030008

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->setTheme(I)V

    goto :goto_1b
.end method
