.class public final Lcom/google/android/youtube/app/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "activity may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/af;->a:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/af;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/af;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 76
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/af;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 78
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/af;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v2, Lcom/google/android/youtube/app/ui/ai;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/af;->a:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/ai;-><init>(Lcom/google/android/youtube/app/ui/af;Landroid/content/Context;)V

    .line 80
    new-instance v3, Lcom/google/android/youtube/app/ui/ah;

    const v4, 0x7f0a00c5

    const v5, 0x7f0a00c6

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/ah;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/ai;->d(Ljava/lang/Object;)V

    .line 82
    new-instance v3, Lcom/google/android/youtube/app/ui/ah;

    const v4, 0x7f0a00c7

    const v5, 0x7f0a00c8

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/ah;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/ai;->d(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v2, Lcom/google/android/youtube/app/ui/ag;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/ui/ag;-><init>(Lcom/google/android/youtube/app/ui/af;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method
