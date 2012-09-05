.class public Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/stopwatch/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

.field private mLayoutID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/clockpackage/stopwatch/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/stopwatch/ListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    iput p2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->mLayoutID:I

    .line 87
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    if-nez p2, :cond_72

    .line 93
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->mLayoutID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v2, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_1f} :catch_69

    .line 109
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;

    .line 111
    .local v1, item:Lcom/sec/android/app/clockpackage/stopwatch/ListItem;
    if-eqz v1, :cond_68

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->getIndex()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->getTime()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->getMilliTime()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->getMillisecond()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->getTimeDiff()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->getTimeDiff()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->getMilliTimeDiff()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/stopwatch/ListItem;->getMillisecondDiff()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_68
    return-object p2

    .line 99
    .end local v1           #item:Lcom/sec/android/app/clockpackage/stopwatch/ListItem;
    :catch_69
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v2, "StopWatch"

    const-string v3, "MemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 105
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :cond_72
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;->holder:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;

    goto :goto_1f
.end method
