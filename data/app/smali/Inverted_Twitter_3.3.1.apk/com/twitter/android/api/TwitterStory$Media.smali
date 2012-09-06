.class public Lcom/twitter/android/api/TwitterStory$Media;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x296e13c35749d688L


# instance fields
.field public final transient a:Ljava/lang/String;

.field public final height:I

.field public final type:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/api/TwitterStory$Media;->type:Ljava/lang/String;

    iput p4, p0, Lcom/twitter/android/api/TwitterStory$Media;->height:I

    iput p5, p0, Lcom/twitter/android/api/TwitterStory$Media;->width:I

    return-void
.end method
