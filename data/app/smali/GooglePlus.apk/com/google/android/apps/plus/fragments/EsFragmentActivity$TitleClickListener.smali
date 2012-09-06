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
    .line 449
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 485
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 456
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onTitlebarLabelClick()V

    goto :goto_a

    .line 461
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_a

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_a

    .line 468
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_a

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_a

    .line 475
    :pswitch_41
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_a

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_a

    .line 452
    nop

    :pswitch_data_5a
    .packed-switch 0x7f090271
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_29
        :pswitch_41
    .end packed-switch
.end method
