.class Lcom/samsung/wimax/napid/EapMethodType$8;
.super Ljava/lang/Object;
.source "EapMethodType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapMethodType;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapMethodType;)V
    .registers 2
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapMethodType$8;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$8;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapMethodType;->eapTypeValue:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapMethodType$8;->this$0:Lcom/samsung/wimax/napid/EapMethodType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/EapMethodType;->dismissDialog(I)V

    .line 1014
    return-void
.end method
