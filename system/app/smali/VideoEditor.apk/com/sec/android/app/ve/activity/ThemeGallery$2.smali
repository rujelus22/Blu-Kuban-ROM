.class Lcom/sec/android/app/ve/activity/ThemeGallery$2;
.super Ljava/lang/Object;
.source "ThemeGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeGallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x7f0b00d3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Position"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/LinearLayout;

    .line 120
    .local v1, mRadioBtn:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 121
    const v4, 0x7f020148

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v4, v4, Lcom/sec/android/app/ve/activity/ThemeGallery;->gridview:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_3b

    .line 140
    const-string v4, "launchThemeView"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    #calls: Lcom/sec/android/app/ve/activity/ThemeGallery;->launchThemeView(I)V
    invoke-static {v4, p3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->access$0(Lcom/sec/android/app/ve/activity/ThemeGallery;I)V

    .line 142
    return-void

    .line 123
    :cond_3b
    if-eq v0, p3, :cond_65

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unset Position"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$2;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v4, v4, Lcom/sec/android/app/ve/activity/ThemeGallery;->gridview:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, tempV:Landroid/view/View;
    if-eqz v3, :cond_68

    .line 128
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 127
    check-cast v2, Landroid/widget/LinearLayout;

    .line 132
    .local v2, mTempRadioBtn:Landroid/widget/LinearLayout;
    const v4, 0x7f020147

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 122
    .end local v2           #mTempRadioBtn:Landroid/widget/LinearLayout;
    .end local v3           #tempV:Landroid/view/View;
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 135
    .restart local v3       #tempV:Landroid/view/View;
    :cond_68
    const-string v4, "Null"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_65
.end method
