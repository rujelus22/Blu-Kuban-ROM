.class public final Lcom/android/athome/picker/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/AdapterView;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/android/athome/picker/MediaOutputGroup;

.field private d:Lcom/android/athome/picker/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/athome/picker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/athome/picker/a;->b:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/a;)Landroid/widget/AdapterView;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/a;->a:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/athome/picker/a;)Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/android/athome/picker/a;)Lcom/android/athome/picker/d;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/a;->d:Lcom/android/athome/picker/d;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/athome/picker/a;->a:Landroid/widget/AdapterView;

    .line 114
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    .line 105
    invoke-virtual {p0}, Lcom/android/athome/picker/a;->notifyDataSetInvalidated()V

    .line 106
    return-void
.end method

.method public final a(Lcom/android/athome/picker/d;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/athome/picker/a;->d:Lcom/android/athome/picker/d;

    .line 118
    return-void
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/athome/picker/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    if-nez p2, :cond_19

    .line 39
    invoke-virtual {p0}, Lcom/android/athome/picker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    sget v1, Lcom/android/athome/picker/aj;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    :cond_19
    new-instance v0, Lcom/android/athome/picker/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/athome/picker/b;-><init>(Lcom/android/athome/picker/a;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    .line 55
    sget v1, Lcom/android/athome/picker/ai;->k:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_d6

    .line 57
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 62
    :goto_3c
    sget v1, Lcom/android/athome/picker/ai;->s:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v1, Lcom/android/athome/picker/ai;->m:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    sget v2, Lcom/android/athome/picker/ai;->r:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_72
    sget v1, Lcom/android/athome/picker/ai;->j:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    new-instance v2, Lcom/android/athome/picker/c;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/c;-><init>(Lcom/android/athome/picker/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/athome/picker/a;->getCount()I

    move-result v2

    if-gt v2, v5, :cond_98

    iget-object v2, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutputGroup;->size()I

    move-result v2

    if-le v2, v5, :cond_9b

    .line 86
    :cond_98
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_9b
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    iget-object v1, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/athome/picker/a;->c:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/MediaOutputGroup;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 91
    sget v1, Lcom/android/athome/picker/ah;->c:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    :cond_af
    const-string v1, "MediaOutputSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "groupId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " groupName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object p2

    .line 59
    :cond_d6
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_3c

    .line 72
    :cond_db
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_72
.end method
