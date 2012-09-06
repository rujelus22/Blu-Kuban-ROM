.class public Lcom/google/googlenav/ui/view/android/B;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/io/File;


# instance fields
.field private final c:Lcom/google/googlenav/android/Q;

.field private final d:Lcom/google/googlenav/ui/wizard/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x389

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/B;->a:Ljava/io/File;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/B;->b:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ca;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/B;->d:Lcom/google/googlenav/ui/wizard/ca;

    .line 65
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/B;->c:Lcom/google/googlenav/android/Q;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/B;->d:Lcom/google/googlenav/ui/wizard/ca;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/B;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/B;->i()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/B;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/B;->l()V

    return-void
.end method

.method private i()V
    .registers 6

    .prologue
    const/16 v4, 0x387

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    :try_start_a
    sget-object v1, Lcom/google/googlenav/ui/view/android/B;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 74
    sget-object v1, Lcom/google/googlenav/ui/view/android/B;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_17
    const-string v1, "gmm"

    const-string v2, ".jpg"

    sget-object v3, Lcom/google/googlenav/ui/view/android/B;->a:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 78
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    new-instance v2, Lcom/google/googlenav/ui/view/android/F;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/B;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/googlenav/ui/view/android/F;-><init>(Lcom/google/googlenav/ui/view/android/B;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 81
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/B;->c:Lcom/google/googlenav/android/Q;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_40} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_40} :catch_4c

    .line 89
    :goto_40
    return-void

    .line 82
    :catch_41
    move-exception v0

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/B;->d:Lcom/google/googlenav/ui/wizard/ca;

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_40

    .line 85
    :catch_4c
    move-exception v0

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/B;->d:Lcom/google/googlenav/ui/wizard/ca;

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_40
.end method

.method private l()V
    .registers 5

    .prologue
    .line 93
    sget-object v0, Lcom/google/googlenav/ui/view/android/B;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 94
    sget-object v0, Lcom/google/googlenav/ui/view/android/B;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/B;->c:Lcom/google/googlenav/android/Q;

    new-instance v2, Lcom/google/googlenav/ui/view/android/E;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/B;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/E;-><init>(Lcom/google/googlenav/ui/view/android/B;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/B;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 238
    const v0, 0x7f1001ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    const v1, 0x7f1001ad

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    const/16 v3, 0x42

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/16 v3, 0x43

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v3, Lcom/google/googlenav/ui/view/android/C;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/android/C;-><init>(Lcom/google/googlenav/ui/view/android/B;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v0, Lcom/google/googlenav/ui/view/android/D;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/D;-><init>(Lcom/google/googlenav/ui/view/android/B;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-object v2
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/B;->d:Lcom/google/googlenav/ui/wizard/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    .line 167
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/r;->onBackPressed()V

    .line 168
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const/16 v0, 0x50d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
