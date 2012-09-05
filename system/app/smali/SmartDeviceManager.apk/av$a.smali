.class final Lav$a;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field final synthetic b:Lav;


# direct methods
.method synthetic constructor <init>(Lav;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lav$a;-><init>(Lav;B)V

    return-void
.end method

.method private constructor <init>(Lav;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lav$a;->b:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lav$a;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lav$a;->a:Ljava/lang/Integer;

    .line 155
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lav$a;->a:Ljava/lang/Integer;

    .line 161
    return-void
.end method
