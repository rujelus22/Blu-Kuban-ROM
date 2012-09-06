.class public Lcom/estrongs/android/pop/scanner/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->d:I

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/scanner/h;->b:Ljava/lang/String;

    if-nez p3, :cond_d

    iget v0, p0, Lcom/estrongs/android/pop/scanner/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->c:I

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_17

    iget v0, p0, Lcom/estrongs/android/pop/scanner/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->d:I

    goto :goto_c

    :cond_17
    iget v0, p0, Lcom/estrongs/android/pop/scanner/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/h;->e:I

    goto :goto_c
.end method
