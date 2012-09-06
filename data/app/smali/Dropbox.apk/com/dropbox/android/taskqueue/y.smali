.class abstract Lcom/dropbox/android/taskqueue/y;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/taskqueue/r;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/y;->a:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/y;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (want rev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
