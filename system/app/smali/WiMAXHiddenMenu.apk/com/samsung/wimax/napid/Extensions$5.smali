.class Lcom/samsung/wimax/napid/Extensions$5;
.super Ljava/lang/Object;
.source "Extensions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/Extensions;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/Extensions;)V
    .registers 2
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/samsung/wimax/napid/Extensions$5;->this$0:Lcom/samsung/wimax/napid/Extensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$5;->this$0:Lcom/samsung/wimax/napid/Extensions;

    iget-object v0, v0, Lcom/samsung/wimax/napid/Extensions;->dlgText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, p0, Lcom/samsung/wimax/napid/Extensions$5;->this$0:Lcom/samsung/wimax/napid/Extensions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/Extensions;->dismissDialog(I)V

    .line 878
    return-void
.end method
