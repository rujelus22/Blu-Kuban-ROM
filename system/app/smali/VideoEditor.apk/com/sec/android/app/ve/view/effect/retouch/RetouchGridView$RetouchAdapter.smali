.class Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;
.super Landroid/widget/BaseAdapter;
.source "RetouchGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetouchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    .line 225
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 230
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 238
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    const v9, 0x7f060003

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0b0113

    const v5, 0x7f0b0112

    .line 244
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$3(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003e

    .line 245
    const/4 v4, 0x0

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 246
    check-cast v1, Landroid/widget/FrameLayout;

    .line 250
    .local v1, view:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$2(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)I

    move-result v2

    if-ne p1, v2, :cond_49

    .line 252
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 251
    check-cast v0, Landroid/widget/TextView;

    .line 254
    .local v0, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 255
    aget-object v2, v2, p1

    .line 254
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_48
    return-object v1

    .line 261
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_49
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/TextView;

    .line 263
    .restart local v0       #textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$RetouchAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 264
    aget-object v2, v2, p1

    .line 263
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48
.end method
