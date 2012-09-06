.class final Lcom/dropbox/android/activity/delegate/C;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-boolean p1, p0, Lcom/dropbox/android/activity/delegate/C;->a:Z

    .line 284
    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/C;->b:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/C;->c:Ljava/lang/String;

    .line 286
    return-void
.end method
