.class public Lcom/vlingo/client/speedtest/SpeedtestScreen;
.super Landroid/app/Activity;
.source "SpeedtestScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final UPDATE_SCREEN:I = 0x1

.field private static currentIndex:I

.field private static currentOut:Ljava/io/BufferedWriter;

.field private static log:Lcom/vlingo/client/core/logging/Logger;

.field private static numUtterances:I

.field private static speedTest:Lcom/vlingo/client/speedtest/Speedtest;


# instance fields
.field private currentThread:Ljava/lang/Thread;

.field private m_tv:Landroid/widget/TextView;

.field private threadShouldStop:Z

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 28
    sput-object v2, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    .line 29
    sput v1, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    .line 30
    sput v1, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    .line 31
    sput-object v2, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentThread:Ljava/lang/Thread;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->threadShouldStop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/speedtest/SpeedtestScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method private runTest()V
    .registers 3

    .prologue
    .line 129
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "in run test"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentThread:Ljava/lang/Thread;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->threadShouldStop:Z

    .line 132
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "calling thread start"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public static setupTest()V
    .registers 11

    .prologue
    .line 37
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "Creating a new speed test"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 38
    const/16 v0, 0xc8

    sput v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 41
    .local v6, c:Ljava/util/Calendar;
    new-instance v0, Lcom/vlingo/client/speedtest/Speedtest;

    invoke-direct {v0}, Lcom/vlingo/client/speedtest/Speedtest;-><init>()V

    sput-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/st."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, filename:Ljava/lang/String;
    :try_start_63
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, output:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    .line 51
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    const-string v1, "WaitTime"

    const/high16 v2, 0x4000

    const/high16 v3, 0x43fa

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/speedtest/Speedtest;->addVariable(Ljava/lang/String;FFZI)V

    .line 52
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    const-string v1, "SpeechDuration"

    const/high16 v2, 0x4000

    const/high16 v3, 0x41a0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/speedtest/Speedtest;->addVariable(Ljava/lang/String;FFZI)V

    .line 54
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    const-string v1, "SpeechChunkSize"

    const/high16 v2, 0x43fa

    const v3, 0x453b8000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/speedtest/Speedtest;->addVariable(Ljava/lang/String;FFZI)V

    .line 55
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    const-string v1, "checkIntervalMultiplier"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4040

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/speedtest/Speedtest;->addVariable(Ljava/lang/String;FFZI)V

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    .line 60
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    invoke-virtual {v0}, Lcom/vlingo/client/speedtest/Speedtest;->getOutputHeader()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, header:Ljava/lang/String;
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_b7} :catch_b8

    .line 68
    .end local v9           #header:Ljava/lang/String;
    .end local v10           #output:Ljava/io/FileWriter;
    :goto_b7
    return-void

    .line 64
    :catch_b8
    move-exception v7

    .line 65
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "Had trouble opening outputFile"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_b7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "*********************** on Create"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->setContentView(I)V

    .line 81
    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;

    .line 82
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got m_tv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_40

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->m_tv:Landroid/widget/TextView;

    const-string v1, "starting test\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_40
    new-instance v0, Lcom/vlingo/client/speedtest/SpeedtestScreen$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/speedtest/SpeedtestScreen$1;-><init>(Lcom/vlingo/client/speedtest/SpeedtestScreen;)V

    iput-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->updateHandler:Landroid/os/Handler;

    .line 98
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    if-eqz v0, :cond_4e

    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->runTest()V

    .line 102
    :cond_4e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "*********************** on Destroy"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->threadShouldStop:Z

    .line 114
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    if-eqz v0, :cond_16

    .line 115
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    invoke-virtual {v0}, Lcom/vlingo/client/speedtest/Speedtest;->onDestroy()V

    .line 118
    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 106
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "*********************** on Pause"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*********************** on Resume speedTest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 137
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in run speedTest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 139
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    if-eqz v3, :cond_bf

    .line 142
    :try_start_1e
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numUtts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadShouldStop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->threadShouldStop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    :goto_50
    sget v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    sget v4, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    if-ge v3, v4, :cond_c0

    iget-boolean v3, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->threadShouldStop:Z

    if-nez v3, :cond_c0

    .line 144
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running Utterance currentIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 146
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    sget v4, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    invoke-virtual {v3, p0, v4}, Lcom/vlingo/client/speedtest/Speedtest;->runUtterance(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, testResults:Ljava/lang/String;
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 150
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, screenString:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->updateHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/vlingo/client/speedtest/SpeedtestScreen;->updateHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    sget v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_b6} :catch_b7

    goto :goto_50

    .line 167
    .end local v1           #screenString:Ljava/lang/String;
    .end local v2           #testResults:Ljava/lang/String;
    :catch_b7
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v4, "Had IO trouble writing log"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :cond_bf
    :goto_bf
    return-void

    .line 156
    :cond_c0
    :try_start_c0
    sget v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    sget v4, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    if-lt v3, v4, :cond_bf

    .line 158
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentOut:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 159
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "************** currentIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numUtts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vlingo/client/speedtest/SpeedtestScreen;->numUtterances:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x0

    sput-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->speedTest:Lcom/vlingo/client/speedtest/Speedtest;

    .line 161
    sget-object v3, Lcom/vlingo/client/speedtest/SpeedtestScreen;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v4, "done - calling finish"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->finish()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_104} :catch_b7

    goto :goto_bf
.end method
