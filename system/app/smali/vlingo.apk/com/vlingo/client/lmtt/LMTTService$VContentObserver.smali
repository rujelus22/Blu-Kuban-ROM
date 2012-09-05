.class public Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;
.super Landroid/database/ContentObserver;
.source "LMTTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VContentObserver"
.end annotation


# static fields
.field public static final CONTENT_CONTACTS:I = 0x1

.field public static final CONTENT_MUSIC:I = 0x2

.field public static final CONTENT_PLAYLISTS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/lmtt/LMTTService;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/vlingo/client/lmtt/LMTTService;I)V
    .registers 4
    .parameter
    .parameter "type"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->this$0:Lcom/vlingo/client/lmtt/LMTTService;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->type:I

    .line 60
    iput p2, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->type:I

    .line 61
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, clearLMTT:Z
    const/4 v5, 0x0

    .line 70
    .local v5, langChange:Z
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->type:I

    packed-switch v0, :pswitch_data_2e

    .line 81
    :goto_9
    return-void

    .line 72
    :pswitch_a
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->this$0:Lcom/vlingo/client/lmtt/LMTTService;

    #calls: Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;
    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTService;->access$000(Lcom/vlingo/client/lmtt/LMTTService;)Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    goto :goto_9

    .line 75
    :pswitch_16
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->this$0:Lcom/vlingo/client/lmtt/LMTTService;

    #calls: Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;
    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTService;->access$000(Lcom/vlingo/client/lmtt/LMTTService;)Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    goto :goto_9

    .line 78
    :pswitch_22
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;->this$0:Lcom/vlingo/client/lmtt/LMTTService;

    #calls: Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;
    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTService;->access$000(Lcom/vlingo/client/lmtt/LMTTService;)Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    goto :goto_9

    .line 70
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_16
        :pswitch_22
    .end packed-switch
.end method
