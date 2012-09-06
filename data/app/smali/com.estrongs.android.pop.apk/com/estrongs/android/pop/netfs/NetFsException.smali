.class public Lcom/estrongs/android/pop/netfs/NetFsException;
.super Ljava/lang/Exception;


# instance fields
.field public error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
