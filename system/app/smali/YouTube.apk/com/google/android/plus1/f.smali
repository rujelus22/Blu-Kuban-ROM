.class final Lcom/google/android/plus1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 3
    .parameter

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/f;-><init>(Lcom/google/android/plus1/BasePlusOneButton;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error receiving account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->d(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/ap;

    move-result-object v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->e(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 493
    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->d(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 494
    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;)V

    .line 496
    :cond_4d
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 478
    check-cast p1, Lcom/google/android/plus1/ap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/ap;)Lcom/google/android/plus1/ap;

    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->d(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->c(Lcom/google/android/plus1/BasePlusOneButton;)V

    iget-object v0, p0, Lcom/google/android/plus1/f;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->a(Lcom/google/android/plus1/BasePlusOneButton;)V

    return-void
.end method
