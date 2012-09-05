.class Lcom/samsung/dmp/layout/SAMIReader$LineData;
.super Ljava/lang/Object;
.source "SAMIReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/SAMIReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineData"
.end annotation


# instance fields
.field private Subtitle:Ljava/lang/String;

.field private Time:I

.field final synthetic this$0:Lcom/samsung/dmp/layout/SAMIReader;


# direct methods
.method public constructor <init>(Lcom/samsung/dmp/layout/SAMIReader;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 169
    iput-object p1, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v1, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Time:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Subtitle:Ljava/lang/String;

    .line 170
    iput v1, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Time:I

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Subtitle:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/samsung/dmp/layout/SAMIReader;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter "time"
    .parameter "subtitle"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->this$0:Lcom/samsung/dmp/layout/SAMIReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Time:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Subtitle:Ljava/lang/String;

    .line 175
    iput p2, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Time:I

    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Subtitle:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public GetSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public GetTime()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/samsung/dmp/layout/SAMIReader$LineData;->Time:I

    return v0
.end method
