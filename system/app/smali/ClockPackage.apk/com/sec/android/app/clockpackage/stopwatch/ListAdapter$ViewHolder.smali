.class Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field index:Landroid/widget/TextView;

.field milliTime:Landroid/widget/TextView;

.field milliTimeDiff:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;

.field time:Landroid/widget/TextView;

.field timeDiff:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "v"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    .line 146
    return-void
.end method


# virtual methods
.method getIndex()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->index:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->index:Landroid/widget/TextView;

    .line 156
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->index:Landroid/widget/TextView;

    return-object v0
.end method

.method getMilliTime()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTime:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTime:Landroid/widget/TextView;

    .line 181
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTime:Landroid/widget/TextView;

    return-object v0
.end method

.method getMilliTimeDiff()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTimeDiff:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0e0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTimeDiff:Landroid/widget/TextView;

    .line 206
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->milliTimeDiff:Landroid/widget/TextView;

    return-object v0
.end method

.method getTime()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 168
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method getTimeDiff()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->timeDiff:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->view:Landroid/view/View;

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->timeDiff:Landroid/widget/TextView;

    .line 193
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/ListAdapter$ViewHolder;->timeDiff:Landroid/widget/TextView;

    return-object v0
.end method
