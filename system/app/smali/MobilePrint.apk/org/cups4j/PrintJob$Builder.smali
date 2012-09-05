.class public Lorg/cups4j/PrintJob$Builder;
.super Ljava/lang/Object;
.source "PrintJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cups4j/PrintJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "document"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/cups4j/PrintJob$Builder;->copies:I

    .line 53
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->pageRanges:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->userName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->jobName:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cups4j/PrintJob$Builder;->duplex:Z

    .line 77
    iput-object p1, p0, Lorg/cups4j/PrintJob$Builder;->document:Ljava/io/InputStream;

    .line 78
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "document"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/cups4j/PrintJob$Builder;->copies:I

    .line 53
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->pageRanges:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->userName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/cups4j/PrintJob$Builder;->jobName:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cups4j/PrintJob$Builder;->duplex:Z

    .line 66
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/cups4j/PrintJob$Builder;->document:Ljava/io/InputStream;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lorg/cups4j/PrintJob$Builder;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cups4j/PrintJob$Builder;->document:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cups4j/PrintJob$Builder;->jobName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cups4j/PrintJob$Builder;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lorg/cups4j/PrintJob$Builder;->copies:I

    return v0
.end method

.method static synthetic access$3(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/cups4j/PrintJob$Builder;->pageRanges:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cups4j/PrintJob$Builder;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cups4j/PrintJob$Builder;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cups4j/PrintJob$Builder;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/cups4j/PrintJob$Builder;->duplex:Z

    return v0
.end method

.method static synthetic access$6(Lorg/cups4j/PrintJob$Builder;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cups4j/PrintJob$Builder;->attributes:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public attributes(Ljava/util/HashMap;)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/cups4j/PrintJob$Builder;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/cups4j/PrintJob$Builder;->attributes:Ljava/util/HashMap;

    .line 164
    return-object p0
.end method

.method public build()Lorg/cups4j/PrintJob;
    .registers 2

    .prologue
    .line 173
    new-instance v0, Lorg/cups4j/PrintJob;

    invoke-direct {v0, p0}, Lorg/cups4j/PrintJob;-><init>(Lorg/cups4j/PrintJob$Builder;)V

    return-object v0
.end method

.method public copies(I)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter "copies"

    .prologue
    .line 87
    iput p1, p0, Lorg/cups4j/PrintJob$Builder;->copies:I

    .line 88
    return-object p0
.end method

.method public duplex(Z)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter "duplex"

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/cups4j/PrintJob$Builder;->duplex:Z

    .line 132
    return-object p0
.end method

.method public jobName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter "jobName"

    .prologue
    .line 120
    iput-object p1, p0, Lorg/cups4j/PrintJob$Builder;->jobName:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public pageRanges(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter "pageRanges"

    .prologue
    .line 98
    iput-object p1, p0, Lorg/cups4j/PrintJob$Builder;->pageRanges:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public userName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;
    .registers 2
    .parameter "userName"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/cups4j/PrintJob$Builder;->userName:Ljava/lang/String;

    .line 110
    return-object p0
.end method
