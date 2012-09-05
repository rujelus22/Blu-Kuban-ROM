.class final Lcom/google/android/youtube/app/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bc;

.field private b:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bc;)V
    .registers 3
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/bk;-><init>(Lcom/google/android/youtube/app/ui/bc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/bc;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bk;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/bk;->b:Z

    if-eqz v0, :cond_6

    .line 287
    :cond_5
    :goto_5
    return-void

    .line 273
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 274
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 277
    new-array v1, v0, [C

    .line 278
    invoke-interface {p1, v4, v0, v1, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 280
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 281
    const-string v1, "\\D"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bk;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v3, v1}, Lcom/google/android/youtube/app/ui/bc;->a(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 285
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
    .line 290
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

    .line 293
    if-ne p3, v0, :cond_8

    if-nez p4, :cond_8

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/bk;->b:Z

    .line 294
    return-void

    .line 293
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
