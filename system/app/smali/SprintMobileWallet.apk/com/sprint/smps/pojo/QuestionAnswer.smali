.class public Lcom/sprint/smps/pojo/QuestionAnswer;
.super Ljava/lang/Object;
.source "QuestionAnswer.java"


# instance fields
.field public answer:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public question:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/sprint/smps/pojo/QuestionAnswer;->category:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/sprint/smps/pojo/QuestionAnswer;->question:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sprint/smps/pojo/QuestionAnswer;->answer:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Question="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/smps/pojo/QuestionAnswer;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nAnswer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/QuestionAnswer;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
