.class final Lcom/sdgtl/mediahub/spr/screen/kp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/kp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->f:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->e:[Ljava/lang/String;

    aget-object v0, v0, p2

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/kp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;I)V

    return-void
.end method
