.class final Lcom/google/android/youtube/app/ui/h;
.super Lcom/google/android/youtube/app/ui/f;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;ILandroid/widget/FrameLayout;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/app/ui/f;-><init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;B)V

    .line 166
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/h;->c:Landroid/widget/ListView;

    .line 167
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 169
    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/f;->b()V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/h;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 185
    return-void
.end method

.method protected final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/f;->b(I)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 179
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/h;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/h;->a(I)V

    .line 173
    return-void
.end method
