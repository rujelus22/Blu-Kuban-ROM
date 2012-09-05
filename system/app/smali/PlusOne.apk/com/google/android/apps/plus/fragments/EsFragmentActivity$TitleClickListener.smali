.class Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;
.super Ljava/lang/Object;
.source "EsFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 674
    :goto_7
    :pswitch_7
    return-void

    .line 651
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onTitlebarLabelClick()V

    goto :goto_7

    .line 656
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_7

    .line 661
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_7

    .line 666
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_7

    .line 649
    nop

    :pswitch_data_3c
    .packed-switch 0x7f0d0188
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1d
        :pswitch_2c
    .end packed-switch
.end method
