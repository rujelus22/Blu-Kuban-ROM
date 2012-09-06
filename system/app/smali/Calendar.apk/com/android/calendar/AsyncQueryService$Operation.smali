.class public Lcom/android/calendar/AsyncQueryService$Operation;
.super Ljava/lang/Object;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AsyncQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field public op:I

.field public scheduledExecutionTime:J

.field public token:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static opToChar(I)C
    .registers 2
    .parameter "op"

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_16

    .line 94
    const/16 v0, 0x3f

    :goto_5
    return v0

    .line 84
    :pswitch_6
    const/16 v0, 0x51

    goto :goto_5

    .line 86
    :pswitch_9
    const/16 v0, 0x49

    goto :goto_5

    .line 88
    :pswitch_c
    const/16 v0, 0x55

    goto :goto_5

    .line 90
    :pswitch_f
    const/16 v0, 0x44

    goto :goto_5

    .line 92
    :pswitch_12
    const/16 v0, 0x42

    goto :goto_5

    .line 82
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Operation [op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", scheduledExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
