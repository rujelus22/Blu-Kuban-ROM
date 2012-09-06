.class public final Lcom/google/android/youtube/app/ui/am;
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

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/am;->a:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/am;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/am;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 76
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/am;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 78
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/am;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v2, Lcom/google/android/youtube/app/ui/ap;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/am;->a:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/ui/ap;-><init>(Lcom/google/android/youtube/app/ui/am;Landroid/content/Context;)V

    .line 80
    new-instance v3, Lcom/google/android/youtube/app/ui/ao;

    const v4, 0x7f0b00eb

    const v5, 0x7f0b00ec

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/ao;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/ap;->d(Ljava/lang/Object;)V

    .line 82
    new-instance v3, Lcom/google/android/youtube/app/ui/ao;

    const v4, 0x7f0b00ed

    const v5, 0x7f0b00ee

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/app/ui/ao;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/ap;->d(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v2, Lcom/google/android/youtube/app/ui/an;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/ui/an;-><init>(Lcom/google/android/youtube/app/ui/am;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method
