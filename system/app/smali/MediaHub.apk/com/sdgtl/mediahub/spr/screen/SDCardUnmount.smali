.class public Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;
.super Landroid/app/Activity;


# static fields
.field private static a:Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a:Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a:Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->x(Landroid/content/Context;)V

    :cond_11
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a:Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/app/Activity;)V

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->a:Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/SDCardUnmount;->finish()V

    :cond_12
    return-void
.end method
