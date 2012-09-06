.class Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/resume/WindowResumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTask"
.end annotation


# static fields
.field private static final TYPE_CANCELLED:I = 0x1

.field private static final TYPE_COMPLETED:I = 0x2

.field private static final TYPE_FAILED:I = 0x3

.field private static final TYPE_PROGRESS:I = 0x4


# instance fields
.field private exception:Ljava/lang/Exception;

.field private progress:J

.field private request:Lcom/x/google/masf/services/resume/ResumableRequest;

.field private response:Lcom/x/google/masf/protocol/Response;

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    const/4 v0, 0x1

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/masf/services/resume/ResumableRequest;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iput-wide p2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->progress:J

    iput-wide p4, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->time:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/masf/services/resume/ResumableRequest;Lcom/x/google/masf/protocol/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iput-object p2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->response:Lcom/x/google/masf/protocol/Response;

    const/4 v0, 0x2

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iput-object p2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->exception:Ljava/lang/Exception;

    const/4 v0, 0x3

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->type:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/services/resume/ResumableRequest;->getListener()Lcom/x/google/masf/services/resume/ResumableRequest$Listener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->type:I

    packed-switch v1, :pswitch_data_30

    goto :goto_8

    :pswitch_f
    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    invoke-interface {v0, v1}, Lcom/x/google/masf/services/resume/ResumableRequest$Listener;->requestCancelled(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    goto :goto_8

    :pswitch_15
    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iget-object v2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->response:Lcom/x/google/masf/protocol/Response;

    invoke-interface {v0, v1, v2}, Lcom/x/google/masf/services/resume/ResumableRequest$Listener;->requestCompleted(Lcom/x/google/masf/services/resume/ResumableRequest;Lcom/x/google/masf/protocol/Response;)V

    goto :goto_8

    :pswitch_1d
    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iget-object v2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/x/google/masf/services/resume/ResumableRequest$Listener;->requestFailed(Lcom/x/google/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V

    goto :goto_8

    :pswitch_25
    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    iget-wide v2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->progress:J

    iget-wide v4, p0, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;->time:J

    invoke-interface/range {v0 .. v5}, Lcom/x/google/masf/services/resume/ResumableRequest$Listener;->requestProgress(Lcom/x/google/masf/services/resume/ResumableRequest;JJ)V

    goto :goto_8

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1d
        :pswitch_25
    .end packed-switch
.end method
