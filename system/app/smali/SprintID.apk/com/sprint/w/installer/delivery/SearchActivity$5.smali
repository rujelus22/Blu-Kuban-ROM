.class Lcom/sprint/w/installer/delivery/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->createDeliveryHub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$5;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 453
    if-eqz p2, :cond_f

    .line 454
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$5;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mPwd:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 458
    :goto_e
    return-void

    .line 456
    :cond_f
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$5;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mPwd:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_e
.end method
