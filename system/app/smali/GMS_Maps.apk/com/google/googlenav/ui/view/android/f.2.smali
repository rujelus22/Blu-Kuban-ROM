.class Lcom/google/googlenav/ui/view/android/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/B;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/B;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/F;->b:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/content/ContentResolver;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/F;)Landroid/content/ContentResolver;
    .registers 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/io/File;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/google/googlenav/ui/view/android/G;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/G;-><init>(Lcom/google/googlenav/ui/view/android/F;Landroid/net/Uri;)V

    invoke-static {v0, p2}, LH/c;->a(LH/e;Ljava/io/File;)V

    .line 125
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 129
    const/4 v0, -0x1

    if-ne p2, v0, :cond_45

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/F;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    .line 140
    :cond_1b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/F;->a(Landroid/net/Uri;Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_35

    .line 150
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/B;->a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/cc;

    const-string v2, "image/jpeg"

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/F;->b:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v3}, Lcom/google/googlenav/ui/wizard/cc;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Lcom/google/googlenav/ui/wizard/cc;)V

    .line 155
    :cond_34
    :goto_34
    return-void

    .line 142
    :catch_35
    move-exception v0

    .line 143
    const-string v1, "MAPS"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/B;->a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_22

    .line 151
    :cond_45
    if-nez p2, :cond_34

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/F;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/B;->a(Lcom/google/googlenav/ui/view/android/B;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_34
.end method
