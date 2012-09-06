.class public final Lcom/google/android/youtube/core/model/proto/c;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/c;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 957
    new-instance v0, Lcom/google/android/youtube/core/model/proto/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/c;-><init>(B)V

    .line 958
    sput-object v0, Lcom/google/android/youtube/core/model/proto/c;->a:Lcom/google/android/youtube/core/model/proto/c;

    .line 960
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/c;->h:I

    .line 622
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/c;->h:I

    .line 624
    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/c;
    .registers 1

    .prologue
    .line 629
    sget-object v0, Lcom/google/android/youtube/core/model/proto/c;->a:Lcom/google/android/youtube/core/model/proto/c;

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;
    .registers 2
    .parameter

    .prologue
    .line 771
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/d;->d()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/d;->a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/c;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/c;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/c;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->f:Z

    return v0
.end method

.method public static i()Lcom/google/android/youtube/core/model/proto/d;
    .registers 1

    .prologue
    .line 768
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/d;->d()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/c;->j()I

    .line 668
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->b:Z

    if-eqz v0, :cond_d

    .line 669
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 671
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->d:Z

    if-eqz v0, :cond_17

    .line 672
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 674
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->f:Z

    if-eqz v0, :cond_21

    .line 675
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 677
    :cond_21
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/c;->f:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 660
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/c;->b:Z

    if-nez v1, :cond_6

    .line 662
    :cond_5
    :goto_5
    return v0

    .line 661
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/c;->d:Z

    if-eqz v1, :cond_5

    .line 662
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final j()I
    .registers 4

    .prologue
    .line 681
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/c;->h:I

    .line 682
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 698
    :goto_5
    return v0

    .line 684
    :cond_6
    const/4 v0, 0x0

    .line 685
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/c;->b:Z

    if-eqz v1, :cond_14

    .line 686
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 689
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/c;->d:Z

    if-eqz v1, :cond_20

    .line 690
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/c;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    :cond_20
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/c;->f:Z

    if-eqz v1, :cond_2c

    .line 694
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/c;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    :cond_2c
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/c;->h:I

    goto :goto_5
.end method
