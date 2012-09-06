.class public Lcom/dropbox/android/filemanager/u;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/dropbox/android/filemanager/u;->b:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/dropbox/android/filemanager/u;->c:J

    .line 49
    iput-object p4, p0, Lcom/dropbox/android/filemanager/u;->d:Ljava/lang/String;

    .line 50
    return-void
.end method
