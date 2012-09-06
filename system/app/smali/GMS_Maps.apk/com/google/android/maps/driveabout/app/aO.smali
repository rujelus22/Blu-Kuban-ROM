.class Lcom/google/android/maps/driveabout/app/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:[Lo/b;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Ljava/util/ArrayList;[Lo/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ao;->c:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ao;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ao;->b:[Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ao;->b:[Lo/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ao;->b:[Lo/b;

    aget-object v3, v0, v1

    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v3, v0}, Lo/b;->a(I)Lo/b;

    move-result-object v0

    aput-object v0, v2, v1

    .line 798
    return-void

    .line 797
    :cond_1c
    const/4 v0, 0x0

    goto :goto_15
.end method
