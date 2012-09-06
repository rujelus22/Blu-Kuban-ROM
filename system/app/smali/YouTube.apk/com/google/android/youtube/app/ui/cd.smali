.class final Lcom/google/android/youtube/app/ui/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bt;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/bt;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cd;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bt;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/cd;-><init>(Lcom/google/android/youtube/app/ui/bt;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cd;->b:Z

    if-eqz v0, :cond_6

    .line 365
    :cond_5
    :goto_5
    return-void

    .line 351
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 352
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 355
    new-array v1, v0, [C

    .line 356
    invoke-interface {p1, v4, v0, v1, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 358
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 359
    const-string v1, "\\D"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cd;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v3, v1}, Lcom/google/android/youtube/app/ui/bt;->b(Lcom/google/android/youtube/app/ui/bt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 363
    invoke-interface {p1, v4, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 371
    if-ne p3, v0, :cond_8

    if-nez p4, :cond_8

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cd;->b:Z

    .line 372
    return-void

    .line 371
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
