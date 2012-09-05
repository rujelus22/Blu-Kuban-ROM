.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_b

    .line 399
    :cond_a
    :goto_a
    return-void

    .line 358
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 359
    .local v0, position:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 360
    .local v2, selectedEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v1, 0x0

    .line 362
    .local v1, prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    iget v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v3, :pswitch_data_fa

    .line 391
    :goto_27
    if-eqz v1, :cond_cd

    .line 392
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 393
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto :goto_a

    .line 364
    :pswitch_38
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_52

    .line 365
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 366
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_52
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 367
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_27

    .line 370
    :pswitch_5d
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_77

    .line 371
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 372
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_77
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 373
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_27

    .line 376
    :pswitch_82
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_9c

    .line 377
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 378
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_9c
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_27

    .line 382
    :pswitch_a7
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_c1

    .line 383
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 384
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_c1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_27

    .line 395
    :cond_cd
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_ed

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_ed

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_ed

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 396
    :cond_ed
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    .line 362
    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_38
        :pswitch_5d
        :pswitch_82
        :pswitch_a7
    .end packed-switch
.end method
