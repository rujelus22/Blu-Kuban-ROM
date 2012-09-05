.class final Lcom/sdgtl/mediahub/spr/screen/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

.field private final synthetic b:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;[Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->b:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->B(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setCategory(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/eo;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    return-void
.end method
