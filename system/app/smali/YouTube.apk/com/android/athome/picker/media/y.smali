.class public final Lcom/android/athome/picker/media/y;
.super Lcom/android/athome/picker/media/z;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/android/athome/picker/media/v;

.field private o:Z


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    .line 877
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/media/z;-><init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    .line 878
    iput-object p0, p0, Lcom/android/athome/picker/media/y;->e:Lcom/android/athome/picker/media/y;

    .line 879
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-boolean v0, p0, Lcom/android/athome/picker/media/y;->o:Z

    if-eqz v0, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_11
    if-ge v1, v4, :cond_2b

    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    if-lez v1, :cond_22

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    iget-object v0, v0, Lcom/android/athome/picker/media/z;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/media/y;->c:Ljava/lang/CharSequence;

    iput-boolean v2, p0, Lcom/android/athome/picker/media/y;->o:Z

    .line 883
    :cond_33
    invoke-super {p0}, Lcom/android/athome/picker/media/z;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    .line 965
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    .line 966
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/media/y;->o:Z

    .line 967
    iget-object v1, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v1, v0, p0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/z;Lcom/android/athome/picker/media/y;)V

    .line 968
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->d()V

    .line 969
    return-void
.end method

.method public final a(Lcom/android/athome/picker/media/z;)V
    .registers 5
    .parameter

    .prologue
    .line 899
    iget-object v0, p1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    if-eqz v0, :cond_1f

    .line 900
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1f
    iget-object v0, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    iget-object v1, p0, Lcom/android/athome/picker/media/y;->f:Lcom/android/athome/picker/media/x;

    if-eq v0, v1, :cond_4e

    .line 903
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/y;->f:Lcom/android/athome/picker/media/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_4e
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 909
    iget-object v1, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iput-object p0, p1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    .line 911
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/media/y;->o:Z

    .line 912
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->c()V

    .line 913
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->d()V

    .line 914
    iget-object v1, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v1, p1, p0, v0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/z;Lcom/android/athome/picker/media/y;I)V

    .line 915
    return-void
.end method

.method public final b(I)Lcom/android/athome/picker/media/z;
    .registers 3
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 888
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/z;->b()Ljava/lang/CharSequence;

    move-result-object v0

    .line 890
    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0}, Lcom/android/athome/picker/media/z;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15
.end method

.method public final b(Lcom/android/athome/picker/media/z;)V
    .registers 5
    .parameter

    .prologue
    .line 947
    iget-object v0, p1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    if-eq v0, p0, :cond_1f

    .line 948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of this group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_1f
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 952
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/media/y;->o:Z

    .line 954
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p1, p0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/z;Lcom/android/athome/picker/media/y;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->d()V

    .line 956
    return-void
.end method

.method final c()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1047
    iget-object v1, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 1049
    :goto_9
    if-ge v2, v3, :cond_1a

    .line 1050
    invoke-virtual {p0, v2}, Lcom/android/athome/picker/media/y;->b(I)Lcom/android/athome/picker/media/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/media/z;->f()I

    move-result v0

    .line 1051
    if-le v0, v1, :cond_26

    .line 1049
    :goto_15
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_9

    .line 1055
    :cond_1a
    iget v0, p0, Lcom/android/athome/picker/media/y;->j:I

    if-eq v1, v0, :cond_25

    .line 1056
    iput v1, p0, Lcom/android/athome/picker/media/y;->j:I

    .line 1057
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/media/z;)V

    .line 1059
    :cond_25
    return-void

    :cond_26
    move v0, v1

    goto :goto_15
.end method

.method public final c(I)V
    .registers 7
    .parameter

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->g()I

    move-result v0

    .line 991
    if-nez v0, :cond_7

    .line 1006
    :cond_6
    :goto_6
    return-void

    .line 995
    :cond_7
    int-to-float v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 996
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 997
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_24

    .line 998
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/y;->b(I)Lcom/android/athome/picker/media/z;

    move-result-object v3

    .line 999
    invoke-virtual {v3}, Lcom/android/athome/picker/media/z;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 1000
    invoke-virtual {v3, v4}, Lcom/android/athome/picker/media/z;->c(I)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1002
    :cond_24
    iget v0, p0, Lcom/android/athome/picker/media/y;->j:I

    if-eq p1, v0, :cond_6

    .line 1003
    iput p1, p0, Lcom/android/athome/picker/media/y;->j:I

    .line 1004
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/media/z;)V

    goto :goto_6
.end method

.method final d()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1064
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1065
    if-nez v9, :cond_10

    .line 1067
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/z;)V

    .line 1095
    :goto_f
    return-void

    :cond_10
    move v5, v4

    move v6, v3

    move v7, v3

    move v2, v4

    move v1, v4

    .line 1074
    :goto_15
    if-ge v5, v9, :cond_40

    .line 1075
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    .line 1076
    iget v8, v0, Lcom/android/athome/picker/media/z;->d:I

    or-int/2addr v8, v1

    .line 1077
    invoke-virtual {v0}, Lcom/android/athome/picker/media/z;->g()I

    move-result v1

    .line 1078
    if-le v1, v2, :cond_66

    .line 1081
    :goto_28
    iget v2, v0, Lcom/android/athome/picker/media/z;->h:I

    if-nez v2, :cond_3c

    move v2, v3

    :goto_2d
    and-int/2addr v7, v2

    .line 1082
    iget v0, v0, Lcom/android/athome/picker/media/z;->l:I

    if-nez v0, :cond_3e

    move v0, v3

    :goto_33
    and-int v2, v6, v0

    .line 1074
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v2

    move v2, v1

    move v1, v8

    goto :goto_15

    :cond_3c
    move v2, v4

    .line 1081
    goto :goto_2d

    :cond_3e
    move v0, v4

    .line 1082
    goto :goto_33

    .line 1085
    :cond_40
    if-eqz v7, :cond_60

    move v0, v4

    :goto_43
    iput v0, p0, Lcom/android/athome/picker/media/y;->h:I

    .line 1088
    if-eqz v6, :cond_62

    move v0, v4

    :goto_48
    iput v0, p0, Lcom/android/athome/picker/media/y;->l:I

    .line 1091
    iput v1, p0, Lcom/android/athome/picker/media/y;->d:I

    .line 1092
    iput v2, p0, Lcom/android/athome/picker/media/y;->i:I

    .line 1093
    if-ne v9, v3, :cond_64

    iget-object v0, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    iget-object v0, v0, Lcom/android/athome/picker/media/z;->g:Landroid/graphics/drawable/Drawable;

    :goto_5a
    iput-object v0, p0, Lcom/android/athome/picker/media/y;->g:Landroid/graphics/drawable/Drawable;

    .line 1094
    invoke-super {p0}, Lcom/android/athome/picker/media/z;->d()V

    goto :goto_f

    :cond_60
    move v0, v3

    .line 1085
    goto :goto_43

    :cond_62
    move v0, v3

    .line 1088
    goto :goto_48

    .line 1093
    :cond_64
    const/4 v0, 0x0

    goto :goto_5a

    :cond_66
    move v1, v2

    goto :goto_28
.end method

.method public final d(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p0}, Lcom/android/athome/picker/media/y;->g()I

    move-result v1

    .line 1011
    if-nez v1, :cond_8

    .line 1029
    :cond_7
    :goto_7
    return-void

    .line 1015
    :cond_8
    iget-object v1, p0, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 1017
    :goto_10
    if-ge v2, v3, :cond_24

    .line 1018
    invoke-virtual {p0, v2}, Lcom/android/athome/picker/media/y;->b(I)Lcom/android/athome/picker/media/z;

    move-result-object v0

    .line 1019
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/z;->d(I)V

    .line 1020
    invoke-virtual {v0}, Lcom/android/athome/picker/media/z;->f()I

    move-result v0

    .line 1021
    if-le v0, v1, :cond_30

    .line 1017
    :goto_1f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_10

    .line 1025
    :cond_24
    iget v0, p0, Lcom/android/athome/picker/media/y;->j:I

    if-eq v1, v0, :cond_7

    .line 1026
    iput v1, p0, Lcom/android/athome/picker/media/y;->j:I

    .line 1027
    iget-object v0, p0, Lcom/android/athome/picker/media/y;->b:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/media/z;)V

    goto :goto_7

    :cond_30
    move v0, v1

    goto :goto_1f
.end method
