.class public Lorg/cups4j/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cups4j/PrintJob$Builder;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private copies:I

.field private document:Ljava/io/InputStream;

.field private duplex:Z

.field private jobName:Ljava/lang/String;

.field private pageRanges:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cups4j/PrintJob$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cups4j/PrintJob;->duplex:Z

    .line 178
    #getter for: Lorg/cups4j/PrintJob$Builder;->document:Ljava/io/InputStream;
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$0(Lorg/cups4j/PrintJob$Builder;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/cups4j/PrintJob;->document:Ljava/io/InputStream;

    .line 179
    #getter for: Lorg/cups4j/PrintJob$Builder;->jobName:Ljava/lang/String;
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$1(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cups4j/PrintJob;->jobName:Ljava/lang/String;

    .line 180
    #getter for: Lorg/cups4j/PrintJob$Builder;->copies:I
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$2(Lorg/cups4j/PrintJob$Builder;)I

    move-result v0

    iput v0, p0, Lorg/cups4j/PrintJob;->copies:I

    .line 181
    #getter for: Lorg/cups4j/PrintJob$Builder;->pageRanges:Ljava/lang/String;
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$3(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cups4j/PrintJob;->pageRanges:Ljava/lang/String;

    .line 182
    #getter for: Lorg/cups4j/PrintJob$Builder;->userName:Ljava/lang/String;
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$4(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cups4j/PrintJob;->userName:Ljava/lang/String;

    .line 183
    #getter for: Lorg/cups4j/PrintJob$Builder;->duplex:Z
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$5(Lorg/cups4j/PrintJob$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cups4j/PrintJob;->duplex:Z

    .line 184
    #getter for: Lorg/cups4j/PrintJob$Builder;->attributes:Ljava/util/HashMap;
    invoke-static {p1}, Lorg/cups4j/PrintJob$Builder;->access$6(Lorg/cups4j/PrintJob$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/cups4j/PrintJob;->attributes:Ljava/util/Map;

    .line 186
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/cups4j/PrintJob;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCopies()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lorg/cups4j/PrintJob;->copies:I

    return v0
.end method

.method public getDocument()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/cups4j/PrintJob;->document:Ljava/io/InputStream;

    return-object v0
.end method

.method public getJobName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/cups4j/PrintJob;->jobName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageRanges()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/cups4j/PrintJob;->pageRanges:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/cups4j/PrintJob;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isDuplex()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/cups4j/PrintJob;->duplex:Z

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, printJobAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/cups4j/PrintJob;->attributes:Ljava/util/Map;

    .line 214
    return-void
.end method
