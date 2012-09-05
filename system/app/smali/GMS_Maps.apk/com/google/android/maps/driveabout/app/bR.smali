.class Lcom/google/android/maps/driveabout/app/bR;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bR;->b:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bR;->b:I

    return v0
.end method
