.class Lcom/estrongs/android/pop/bt/vcard/k;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/pop/bt/vcard/k;->a:I

    iput-object p2, p0, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/bt/vcard/k;->c:Z

    iput-object p4, p0, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    return-void
.end method
