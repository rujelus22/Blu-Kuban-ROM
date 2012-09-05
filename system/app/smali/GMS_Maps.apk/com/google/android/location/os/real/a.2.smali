.class public Lcom/google/android/location/os/real/a;
.super Ljava/lang/Object;

# interfaces
.implements Lm/b;


# instance fields
.field private final a:Li/f;

.field private final b:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->a:Li/f;

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Li/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/os/real/a;->a:Li/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Li/f;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Li/f;

    invoke-virtual {v0, p1, p2}, Li/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
