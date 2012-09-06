.class public Lcom/google/googlenav/ui/view/android/N;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Lcom/google/googlenav/android/Q;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Lcom/google/googlenav/ui/wizard/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmpGmmPhoto.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/android/N;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ca;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/N;->e:Lcom/google/googlenav/ui/wizard/ca;

    .line 62
    iput p2, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    .line 65
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/ui/view/android/Q;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Q;->a(ILcom/google/googlenav/android/R;)V

    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Q;->a(ILcom/google/googlenav/android/R;)V

    .line 69
    sget-object v0, Lcom/google/googlenav/ui/view/android/N;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->d:Landroid/content/ContentResolver;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/N;)I
    .registers 2
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/android/Q;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/ui/wizard/ca;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->e:Lcom/google/googlenav/ui/wizard/ca;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/N;)Landroid/content/ContentResolver;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->d:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/N;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/N;->l()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/N;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/N;->m()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/googlenav/ui/view/android/N;->a:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    iget v0, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    if-nez v0, :cond_1c

    .line 83
    const-string v0, "output"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/googlenav/ui/view/android/N;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    :cond_1c
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/google/googlenav/ui/view/android/Q;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    :goto_29
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 90
    return-void

    .line 86
    :cond_2d
    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    goto :goto_29
.end method

.method private m()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget v1, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    if-eqz v1, :cond_35

    .line 96
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "outputX"

    iget v2, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "outputY"

    iget v2, p0, Lcom/google/googlenav/ui/view/android/N;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    :cond_35
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    new-instance v2, Lcom/google/googlenav/ui/view/android/R;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 106
    return-void
.end method


# virtual methods
.method public K_()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(I)V

    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->c:Lcom/google/googlenav/android/Q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(I)V

    .line 76
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/N;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 246
    const v0, 0x7f1001ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    const v1, 0x7f1001ad

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 249
    const/16 v3, 0x42

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/16 v3, 0x43

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v3, Lcom/google/googlenav/ui/view/android/O;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/android/O;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v0, Lcom/google/googlenav/ui/view/android/P;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/P;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-object v2
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/N;->e:Lcom/google/googlenav/ui/wizard/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    .line 234
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/r;->onBackPressed()V

    .line 235
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    const/16 v0, 0x50d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
