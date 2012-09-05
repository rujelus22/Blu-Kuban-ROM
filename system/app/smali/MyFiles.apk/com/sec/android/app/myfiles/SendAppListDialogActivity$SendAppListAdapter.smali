.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/SendAppListDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 563
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 567
    move-object v3, p2

    .line 569
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_19

    .line 570
    iget-object v5, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$500(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 571
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f03002d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 574
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_19
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;

    .line 576
    .local v2, ti:Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;
    if-eqz v2, :cond_45

    .line 578
    const v5, 0x7f0c0043

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 579
    .local v0, appicon:Landroid/widget/ImageView;
    const v5, 0x7f0c0044

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 581
    .local v1, appname:Landroid/widget/TextView;
    if-eqz v0, :cond_3c

    .line 582
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    :cond_3c
    if-eqz v1, :cond_45

    .line 586
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$SendAppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    .end local v0           #appicon:Landroid/widget/ImageView;
    .end local v1           #appname:Landroid/widget/TextView;
    :cond_45
    return-object v3
.end method
