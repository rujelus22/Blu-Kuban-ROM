.class final Lcom/sdgtl/mediahub/spr/screen/sh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sh;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const v2, 0x7f0a01d9

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method