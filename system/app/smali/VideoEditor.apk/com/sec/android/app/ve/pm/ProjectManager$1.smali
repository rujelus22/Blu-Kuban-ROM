.class Lcom/sec/android/app/ve/pm/ProjectManager$1;
.super Ljava/lang/Object;
.source "ProjectManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/pm/ProjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/app/video/editor/external/TranscodeElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)I
    .registers 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "object1 :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "object2 :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjCreationTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjCreationTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3a

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_39
    return v0

    :cond_3a
    const/4 v0, -0x1

    goto :goto_39
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    check-cast p2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/ve/pm/ProjectManager$1;->compare(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)I

    move-result v0

    return v0
.end method
