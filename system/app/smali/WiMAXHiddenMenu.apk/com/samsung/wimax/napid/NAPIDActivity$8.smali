.class Lcom/samsung/wimax/napid/NAPIDActivity$8;
.super Ljava/lang/Object;
.source "NAPIDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/NAPIDActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/NAPIDActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$8;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 864
    const-string v0, "WIMAX"

    const-string v1, "cancel Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$8;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    iget-object v0, v0, Lcom/samsung/wimax/napid/NAPIDActivity;->prtIdText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$8;->this$0:Lcom/samsung/wimax/napid/NAPIDActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/NAPIDActivity;->dismissDialog(I)V

    .line 867
    return-void
.end method
