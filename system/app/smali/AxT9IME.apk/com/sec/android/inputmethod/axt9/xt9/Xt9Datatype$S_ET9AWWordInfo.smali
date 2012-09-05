.class public Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWWordInfo"
.end annotation


# instance fields
.field public sSubstitution:[S

.field public sWord:[S

.field public wSubstitutionLen:S

.field public wWordLen:S


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x40

    .line 834
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 843
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    .line 844
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    return-void
.end method
