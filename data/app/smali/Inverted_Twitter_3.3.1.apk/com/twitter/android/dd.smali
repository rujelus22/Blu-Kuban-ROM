.class public Lcom/twitter/android/dd;
.super Ljava/lang/Object;


# instance fields
.field protected final g:I

.field protected final h:I

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/dd;->i:Ljava/lang/String;

    iput p2, p0, Lcom/twitter/android/dd;->g:I

    iput p3, p0, Lcom/twitter/android/dd;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/dd;->g:I

    return v0
.end method
